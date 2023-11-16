# prach_dclink

Lightweight FiveM script designed to save players' Discord IDs to a MySQL database using the oxmysql library.

## Installation

### Prerequisites

Before you begin, ensure you have the following dependencies installed:

- [MySQL Database Server](https://mariadb.org/download/)
- [oxmysql](https://github.com/overextended/oxmysql) - The oxmysql library for MySQL integration in FiveM.

### Installation Steps

1. **Download the Script:**
   Clone or [download](https://github.com/prasifka/prach_dclink/releases/tag/main/latest) the `prach_dclink` repository to your FiveM server resources folder.

   ```bash
   git clone https://github.com/prasifka/prach_dclink.git
2. **Update Database:**
   Update your MySQL Database by executing the commands in the `mysql.sql` file. <details>You can do this using a MySQL command-line tool or a database management tool like phpMyAdmin.</details> Open the `mysql.sql` file and run the commands within it against your MySQL database.

3. **Start the script:**
   Start the script by restarting your server or by using the ensure command
   ```bash
   ensure prach_dclink
