BEGIN {
    RS = "\n";
    totalPercent = 0.0;
};
{
    totalPercent += $1 - $2;
};
END {
    printf("\nGrade: %.2f", (100 - (100*totalPercent)));
};