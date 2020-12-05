BEGIN {
    RS = "\n";
    FS = ",";
    Count0_0 = 0;
    Count0_1 = 0;
    Count0_2 = 0;
    Count0_3 = 0;
    Count0_4 = 0;
    Count0_5 = 0;
    Count0_5 = 0;
    Count0_6 = 0;
    Count0_7 = 0;
    Count0_8 = 0;
    Count0_9 = 0;
    Count1_0 = 0;
    Count1_1 = 0;
    Count1_2 = 0;
    Count1_3 = 0;
    Count1_4 = 0;
    Count1_5 = 0;
    Count1_5 = 0;
    Count1_6 = 0;
    Count1_7 = 0;
    Count1_8 = 0;
    Count1_9 = 0;
    Count2_0 = 0;
    Count2_1 = 0;
    Count2_2 = 0;
    Count2_3 = 0;
    Count2_4 = 0;
    Count2_5 = 0;
    Count2_5 = 0;
    Count2_6 = 0;
    Count2_7 = 0;
    Count2_8 = 0;
    Count2_9 = 0;
    Count3_0 = 0;
    Count3_1 = 0;
    Count3_2 = 0;
    Count3_3 = 0;
    Count3_4 = 0;
    Count3_5 = 0;
    Count3_5 = 0;
    Count3_6 = 0;
    Count3_7 = 0;
    Count3_8 = 0;
    Count3_9 = 0;
    Count4_0 = 0;
    Count4_1 = 0;
    Count4_2 = 0;
    Count4_3 = 0;
    Count4_4 = 0;
    Count4_5 = 0;
    Count4_5 = 0;
    Count4_6 = 0;
    Count4_7 = 0;
    Count4_8 = 0;
    Count4_9 = 0;
    PWMlow = 0;
};
$1 ~ "1\.0" {
    Count1_0++;
};
$1 ~ "1\.1" {
    Count1_1++;
};
$1 ~ "1\.2" {
    Count1_2++;
};
$1 ~ "1\.3" {
    Count1_3++;
};
$1 ~ "1\.4" {
    Count1_4++;
};
$1 ~ "1\.5" {
    Count1_5++;
};
$1 ~ "1\.6" {
    Count1_6++;
};
$1 ~ "1\.7" {
    Count1_7++;
};
$1 ~ "1\.8" {
    Count1_8++;
};
$1 ~ "1\.9" {
    Count1_9++;
};
$1 ~ "2\.0" {
    Count2_0++;
};
$1 ~ "2\.1" {
    Count2_1++;
};
$1 ~ "2\.2" {
    Count2_2++;
};
$1 ~ "2\.3" {
    Count2_3++;
};
$1 ~ "2\.4" {
    Count2_4++;
};
$1 ~ "2\.5" {
    Count2_5++;
};
$1 ~ "2\.6" {
    Count2_6++;
};
$1 ~ "2\.7" {
    Count2_7++;
};
$1 ~ "2\.8" {
    Count2_8++;
};
$1 ~ "2\.9" {
    Count2_9++;
};
$1 ~ "3\.0" {
    Count3_0++;
};
$1 ~ "3\.1" {
    Count3_1++;
};
$1 ~ "3\.2" {
    Count3_2++;
};
$1 ~ "3\.3" {
    Count3_3++;
};
$1 ~ "3\.4" {
    Count3_4++;
};
$1 ~ "3\.5" {
    Count3_5++;
};
$1 ~ "3\.6" {
    Count3_6++;
};
$1 ~ "3\.7" {
    Count3_7++;
};
$1 ~ "3\.8" {
    Count3_8++;
};
$1 ~ "3\.9" {
    Count3_9++;
};
$1 ~ "4\.0" {
    Count4_0++;
};
$1 ~ "4\.1" {
    Count4_1++;
};
$1 ~ "4\.2" {
    Count4_2++;
};
$1 ~ "4\.3" {
    Count4_3++;
};
$1 ~ "4\.4" {
    Count4_4++;
};
$1 ~ "4\.5" {
    Count4_5++;
};
$1 ~ "4\.6" {
    Count4_6++;
};
$1 ~ "4\.7" {
    Count4_7++;
};
$1 ~ "4\.8" {
    Count4_8++;
};
$1 ~ "4\.9" {
    Count4_9++;
};
$2 ~ "0\.." {
    PWMlow++;
};
END {
    printf("%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f\n%f", (Count0_0 / NR), (Count0_1 / NR), (Count0_2 / NR), (Count0_3 / NR), (Count0_4 / NR), (Count0_5 / NR), (Count0_6 / NR), (Count0_7 / NR), (Count0_8 / NR), (Count0_9 / NR), (Count1_0 / NR), (Count1_1 / NR), (Count1_2 / NR), (Count1_3 / NR), (Count1_4 / NR), (Count1_5 / NR), (Count1_6 / NR), (Count1_7 / NR), (Count1_8 / NR), (Count1_9 / NR), (Count2_0 / NR), (Count2_1 / NR), (Count2_2 / NR), (Count2_3 / NR), (Count2_4 / NR), (Count2_5 / NR), (Count2_6 / NR), (Count2_7 / NR), (Count2_8 / NR), (Count2_9 / NR), (Count3_0 / NR), (Count3_1 / NR), (Count3_2 / NR), (Count3_3 / NR), (Count3_4 / NR), (Count3_5 / NR), (Count3_6 / NR), (Count3_7 / NR), (Count3_8 / NR), (Count3_9 / NR), (Count4_0 / NR), (Count4_1 / NR), (Count4_2 / NR), (Count4_3 / NR), (Count4_4 / NR), (Count4_5 / NR), (Count4_6 / NR), (Count4_7 / NR), (Count4_8 / NR), (Count4_9 / NR), (1 - (PWMlow / NR)));
};