using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace PhilosophyLearnAppAPI.Migrations
{
    /// <inheritdoc />
    public partial class Addfinishedstatustoquiz : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "TotalQuestionsAnswered",
                table: "Statistics",
                newName: "WrongAnswers");

            migrationBuilder.RenameColumn(
                name: "Id",
                table: "Site",
                newName: "Index");

            migrationBuilder.AddColumn<int>(
                name: "CorrectAnswers",
                table: "Statistics",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "QuestionsAnswered",
                table: "Statistics",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "Description",
                table: "Quiz",
                type: "nvarchar(max)",
                nullable: false,
                defaultValue: "");

            migrationBuilder.AddColumn<bool>(
                name: "Finished",
                table: "Question",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.AddColumn<int>(
                name: "Index",
                table: "Question",
                type: "int",
                nullable: false,
                defaultValue: 0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "CorrectAnswers",
                table: "Statistics");

            migrationBuilder.DropColumn(
                name: "QuestionsAnswered",
                table: "Statistics");

            migrationBuilder.DropColumn(
                name: "Description",
                table: "Quiz");

            migrationBuilder.DropColumn(
                name: "Finished",
                table: "Question");

            migrationBuilder.DropColumn(
                name: "Index",
                table: "Question");

            migrationBuilder.RenameColumn(
                name: "WrongAnswers",
                table: "Statistics",
                newName: "TotalQuestionsAnswered");

            migrationBuilder.RenameColumn(
                name: "Index",
                table: "Site",
                newName: "Id");
        }
    }
}
