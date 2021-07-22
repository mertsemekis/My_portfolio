									-- Data Cleaning with SQL

-- Check if the data were imported
SELECT * FROM dbo.NashvileHousing;


-------------------------------------------------------------------------------------------------------
-- Standardize Date format


SELECT SaleDate FROM NashvileHousing;

SELECT SaleDate, CONVERT(DATE,SaleDate)
FROM NashvileHousing;

ALTER TABLE NashvileHousing
ADD YearDate DATE;

UPDATE NashvileHousing
SET YearDate = CONVERT(DATE,SaleDate);

SELECT YearDate FROM NashvileHousing;


-------------------------------------------------------------------------------------------------------
-- Clean PropertyAddress Column

SELECT * 
FROM NashvileHousing
WHERE PropertyAddress IS NULL;

SELECT * FROM NashvileHousing ORDER BY ParcelID;
-- I notice that tha ParcelID is the same with the PropertyAddress
-- As a result I will fill the NULL values if the address with the same ParcelID is already filled


SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress,  ISNULL(a.PropertyAddress, b.PropertyAddress)
FROM NashvileHousing a
JOIN NashvileHousing b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress IS NULL;

UPDATE a
SET PropertyAddress = ISNULL(a.PropertyAddress, b.PropertyAddress)
FROM NashvileHousing a
JOIN NashvileHousing b
	ON a.ParcelID = b.ParcelID
	AND a.[UniqueID ] <> b.[UniqueID ] ;


-------------------------------------------------------------------------------------------------------
--Break out PropertyAddress into columns (address, city)

SELECT PropertyAddress
FROM NashvileHousing;

SELECT SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1),
SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) +1, LEN(PropertyAddress))
FROM NashvileHousing; -- Seperate the data from the column

ALTER TABLE NashvileHousing
ADD NewPropertyAddress VARCHAR(255); 

UPDATE NashvileHousing
SET NewPropertyAddress = SUBSTRING(PropertyAddress, 1, CHARINDEX(',', PropertyAddress) -1);
--Remeber to change the name of the column when i will drop the unnecessary columns
--SELECT NewPropertyAddress
--FROM NashvileHousing;

ALTER TABLE NashvileHousing
ADD PropertyCity VARCHAR(255);

UPDATE NashvileHousing
SET PropertyCity = SUBSTRING(PropertyAddress, CHARINDEX(',', PropertyAddress) +1, LEN(PropertyAddress));
--SELECT PropertyCity FROM NashvileHousing;


-------------------------------------------------------------------------------------------------------
--Break out OwnerAddress into columns (address, city, state)

SELECT OwnerAddress FROM NashvileHousing;

SELECT PARSENAME(REPLACE(OwnerAddress,',','.'),1),
PARSENAME(REPLACE(OwnerAddress,',','.'),2),
PARSENAME(REPLACE(OwnerAddress,',','.'),3)
FROM NashvileHousing;


ALTER TABLE NashvileHousing
ADD NewOwnerAddress  VARCHAR(255);
--Remeber to change the name of the column when i will drop the unnecessary columns
UPDATE NashvileHousing
SET NewOwnerAddress = PARSENAME(REPLACE(OwnerAddress,',','.'),3);


ALTER TABLE NashvileHousing
ADD OwnerCity VARCHAR(255);
UPDATE NashvileHousing
SET OwnerCity = PARSENAME(REPLACE(OwnerAddress,',','.'),2);


ALTER TABLE NashvileHousing
ADD OwnerState VARCHAR(255);
UPDATE NashvileHousing
SET OwnerState = PARSENAME(REPLACE(OwnerAddress,',','.'),1);

--SELECT NewOwnerAddress, OwnerCity, OwnerState FROM NashvileHousing;


--------------------------------------------------------------------------------------------------------
--Change Y and N to Yes and No in the SoldAsVacant column

SELECT SoldAsVacant FROM NashvileHousing;


SELECT SoldAsVacant,
CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
	WHEN SoldAsVacant = 'N' THEN 'No'
	ELSE SoldAsVacant
END
FROM NashvileHousing;

UPDATE NashvileHousing
SET SoldAsVacant = CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
						WHEN SoldAsVacant = 'N' THEN 'No'
						ELSE SoldAsVacant
					END
--SELECT DISTINCT SoldAsVacant FROM NashvileHousing;

-------------------------------------------------------------------------------------------------------
--Remove unused columns

ALTER TABLE NashvileHousing
DROP COLUMN PropertyAddress, OwnerAddress;

ALTER TABLE NashvileHousing
CHANGE NewPropertyAddress PropertyAddress varchar(255);

ALTER TABLE NashvileHousing
CHANGE NewOwnerAddress OwnerAddress varchar(255);