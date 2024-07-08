using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace shoesshop_api.Migrations
{
    /// <inheritdoc />
    public partial class addstatus : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "Sizes",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "ProductTypes",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "Colors",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "Status",
                table: "Brands",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Status",
                table: "Sizes");

            migrationBuilder.DropColumn(
                name: "Status",
                table: "ProductTypes");

            migrationBuilder.DropColumn(
                name: "Status",
                table: "Colors");

            migrationBuilder.DropColumn(
                name: "Status",
                table: "Brands");
        }
    }
}
