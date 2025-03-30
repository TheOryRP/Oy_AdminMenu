CREATE TABLE IF NOT EXISTS `bans` (  
    `id` INT AUTO_INCREMENT PRIMARY KEY,  
    `identifier` VARCHAR(50) NOT NULL,  
    `reason` TEXT NOT NULL,  
    `banned_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);  
