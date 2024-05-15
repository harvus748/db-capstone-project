

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `LittleLemonDB` DEFAULT CHARACTER SET utf8 ;
USE `LittleLemonDB` ;

-- -----------------------------------------------------
-- Table `mydb`.`Customer_Details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Customer_Details` (
  `Customer_Details_ID` INT NOT NULL,
  `Customer_Name` VARCHAR(200) NOT NULL,
  `Contact_Details` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Customer_Details_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Staff_Information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Staff_Information` (
  `Staff_Information_ID` INT NOT NULL,
  `Role` VARCHAR(200) NOT NULL,
  `Salary` DECIMAL(2) NOT NULL,
  PRIMARY KEY (`Staff_Information_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Bookings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Bookings` (
  `Bookings_ID` INT NOT NULL,
  `Date` DATETIME NOT NULL,
  `Table_Number` INT NOT NULL,
  `Customer_Details_ID` INT NOT NULL,
  `Staff_Information_ID` INT NOT NULL,
  PRIMARY KEY (`Bookings_ID`),
  INDEX `Customer_Details_FK_idx` (`Customer_Details_ID` ASC) VISIBLE,
  INDEX `Staff_Information_FK_idx` (`Staff_Information_ID` ASC) VISIBLE,
  CONSTRAINT `Customer_Details_FK`
    FOREIGN KEY (`Customer_Details_ID`)
    REFERENCES `LittleLemonDB`.`Customer_Details` (`Customer_Details_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `Staff_Information_FK`
    FOREIGN KEY (`Staff_Information_ID`)
    REFERENCES `LittleLemonDB`.`Staff_Information` (`Staff_Information_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Menu` (
  `Menu_ID` INT NOT NULL,
  `Cuisine` VARCHAR(200) NOT NULL,
  `Starters` VARCHAR(200) NOT NULL,
  `Courses` VARCHAR(200) NOT NULL,
  `Drinks` VARCHAR(200) NOT NULL,
  `Desserts` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Menu_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Order_Delivery_Status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Order_Delivery_Status` (
  `Order_Delivery_Status_ID` INT NOT NULL,
  `Status` VARCHAR(45) NOT NULL,
  `Delivery_Date` DATETIME NOT NULL,
  PRIMARY KEY (`Order_Delivery_Status_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `LittleLemonDB`.`Orders` (
  `Order_ID` INT NOT NULL,
  `Bookings_ID` INT NOT NULL,
  `Order_Delivery_Status_ID` INT NOT NULL,
  `Menu_ID` INT NOT NULL,
  `Order_Date` DATETIME NOT NULL,
  `Quantity` INT NOT NULL,
  `Total_Cost` DECIMAL(2) NOT NULL,
  PRIMARY KEY (`Order_ID`),
  INDEX `Menu_FK_idx` (`Menu_ID` ASC) VISIBLE,
  INDEX `Order_Delivery_Status_FK_idx` (`Order_Delivery_Status_ID` ASC) VISIBLE,
  INDEX `Bookings_FK_idx` (`Bookings_ID` ASC) VISIBLE,
  CONSTRAINT `Menu_FK`
    FOREIGN KEY (`Menu_ID`)
    REFERENCES `LittleLemonDB`.`Menu` (`Menu_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `Order_Delivery_Status_FK`
    FOREIGN KEY (`Order_Delivery_Status_ID`)
    REFERENCES `LittleLemonDB`.`Order_Delivery_Status` (`Order_Delivery_Status_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `Bookings_FK`
    FOREIGN KEY (`Bookings_ID`)
    REFERENCES `LittleLemonDB`.`Bookings` (`Bookings_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
