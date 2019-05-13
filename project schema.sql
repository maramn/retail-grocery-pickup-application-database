-- MySQL Workbench Forward Engineering

-- -----------------------------------------------------
-- Schema retail
-- -----------------------------------------------------


SET foreign_key_checks = 1;

-- -----------------------------------------------------
-- Schema retail
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `retail` DEFAULT CHARACTER SET utf8 ;
USE `retail` ;

-- -----------------------------------------------------
-- Table `retail`.`credit_card`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `retail`.`credit_card` (
  `credit_card_id` INT NOT NULL AUTO_INCREMENT,
  `credit_card_num` VARCHAR(45) NOT NULL,
  `expiry_date` DATE NOT NULL,
  `cvv` INT NOT NULL,
  PRIMARY KEY (`credit_card_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `retail`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `retail`.`customer` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `credit_card_id` INT NOT NULL,
  PRIMARY KEY (`user_id`),
  INDEX `fk_customer_credit_card_idx` (`credit_card_id` ASC),
  CONSTRAINT `credit_card_id`
    FOREIGN KEY (`credit_card_id`)
    REFERENCES `retail`.`credit_card` (`credit_card_id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `retail`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `retail`.`employee` (
  `employee_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(20) NULL,
  PRIMARY KEY (`employee_id`),
  UNIQUE INDEX `employee_id_UNIQUE` (`employee_id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `retail`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `retail`.`orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `order_date` VARCHAR(45) NOT NULL,
  `employee_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_orders_customer1_idx` (`user_id` ASC),
  INDEX `fk_orders_employee1_idx` (`employee_id` ASC),
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `retail`.`customer` (`user_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `employee_id`
    FOREIGN KEY (`employee_id`)
    REFERENCES `retail`.`employee` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `retail`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `retail`.`category` (
  `category_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE INDEX `category_id_UNIQUE` (`category_id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `retail`.`product_location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `retail`.`product_location` (
  `product_location_id` INT NOT NULL AUTO_INCREMENT,
  `lane_number` INT NOT NULL,
  `shelf` VARCHAR(5) NOT NULL,
  `shelf_loc` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`product_location_id`),
  UNIQUE INDEX `product_location_id_UNIQUE` (`product_location_id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `retail`.`product_details`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `retail`.`product_details` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `price` DECIMAL(7,2) NOT NULL,
  `category_id` INT NOT NULL,
  `product_location_id` INT NOT NULL,
  `inventory` INT NOT NULL,
  PRIMARY KEY (`product_id`),
  UNIQUE INDEX `product_id_UNIQUE` (`product_id` ASC),
  INDEX `fk_product_details_category1_idx` (`category_id` ASC),
  INDEX `fk_product_details_product_location1_idx` (`product_location_id` ASC),
  CONSTRAINT `category_id`
    FOREIGN KEY (`category_id`)
    REFERENCES `retail`.`category` (`category_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `product_location_id`
    FOREIGN KEY (`product_location_id`)
    REFERENCES `retail`.`product_location` (`product_location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `retail`.`order_product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `retail`.`order_product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  INDEX `fk_orders_has_product_details_product_details1_idx` (`product_id` ASC),
  INDEX `fk_orders_has_product_details_orders1_idx` (`order_id` ASC),
  PRIMARY KEY (`id`),
  CONSTRAINT `order_id`
    FOREIGN KEY (`order_id`)
    REFERENCES `retail`.`orders` (`order_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `product_id`
    FOREIGN KEY (`product_id`)
    REFERENCES `retail`.`product_details` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `retail`.`Notification`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `retail`.`Notification` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `message` VARCHAR(100) NOT NULL,
  `datetime` DATETIME NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `retail`.`invoice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `retail`.`invoice` (
  `invoice_id` INT NOT NULL AUTO_INCREMENT,
  `order_id` INT NOT NULL,
  `total_bill` DECIMAL(7,2) NOT NULL,
  PRIMARY KEY (`invoice_id`),
  INDEX `fk_invoice_orders1_idx` (`order_id` ASC),
  CONSTRAINT `fk_invoice_orders1`
    FOREIGN KEY (`order_id`)
    REFERENCES `retail`.`orders` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


