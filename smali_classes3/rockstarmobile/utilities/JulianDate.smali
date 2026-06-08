.class public Lrockstarmobile/utilities/JulianDate;
.super Ljava/lang/Object;
.source "r8-map-id-70ffa229d52098b2bfaf72d5c9427c4682a48c43d2fc8a0f4ecaa09b3a4f65c4"


# static fields
.field public static final DAY_OF_MONTH:I = 0x2

.field public static final HOUR_OF_DAY:I = 0x3

.field public static final MAX_DATE:D = 5373484.5

.field public static final MINUTE:I = 0x4

.field public static final MIN_DATE:D = 0.0

.field public static final MONTH:I = 0x1

.field public static final NUMFIELDS:I = 0x6

.field public static final SECOND:I = 0x5

.field public static final YEAR:I


# instance fields
.field m_fJD:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lrockstarmobile/utilities/JulianDate;->now()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrockstarmobile/utilities/JulianDate;->set(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0, p1, p2}, Lrockstarmobile/utilities/JulianDate;->set(D)V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual/range {p0 .. p6}, Lrockstarmobile/utilities/JulianDate;->set(IIIIII)V

    return-void
.end method

.method public constructor <init>(Ljava/sql/Timestamp;)V
    .locals 7

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, p1

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 p1, 0xd

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lrockstarmobile/utilities/JulianDate;->encodeJD(IIIIII)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lrockstarmobile/utilities/JulianDate;->set(D)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lrockstarmobile/utilities/JulianDate;->set([I)V

    return-void
.end method

.method public static IsValid(IIIIII)Z
    .locals 8

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lrockstarmobile/utilities/JulianDate;

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lrockstarmobile/utilities/JulianDate;-><init>(IIIIII)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v1, p0}, Lrockstarmobile/utilities/JulianDate;->get([I)[I

    move-result-object p0

    .line 4
    aget p1, p0, v0

    if-eq v2, p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x1

    .line 6
    aget p2, p0, p1

    if-eq v3, p2, :cond_1

    return v0

    :cond_1
    const/4 p2, 0x2

    .line 8
    aget p2, p0, p2

    if-eq v4, p2, :cond_2

    return v0

    :cond_2
    const/4 p2, 0x3

    .line 10
    aget p2, p0, p2

    if-eq v5, p2, :cond_3

    return v0

    :cond_3
    const/4 p2, 0x4

    .line 12
    aget p2, p0, p2

    if-eq v6, p2, :cond_4

    return v0

    :cond_4
    const/4 p2, 0x5

    .line 14
    aget p0, p0, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v7, p0, :cond_5

    return v0

    :cond_5
    return p1

    :catch_0
    return v0
.end method

.method public static daysOnly(D)D
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static decodeJD(D[I)[I
    .locals 12

    const/4 v0, 0x6

    if-eqz p2, :cond_0

    .line 1
    array-length v1, p2

    if-ge v1, v0, :cond_1

    .line 2
    :cond_0
    new-array p2, v0, [I

    :cond_1
    double-to-long v0, p0

    long-to-double v2, v0

    sub-double/2addr p0, v2

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide/32 v2, 0x10bd9

    add-long/2addr v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, p0, v4

    if-ltz v4, :cond_2

    const-wide/32 v2, 0x10bda

    add-long/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p0, v0

    :cond_2
    const-wide/16 v0, 0x4

    mul-long v4, v2, v0

    const-wide/32 v6, 0x23ab1

    .line 14
    div-long/2addr v4, v6

    mul-long/2addr v6, v4

    const-wide/16 v8, 0x3

    add-long/2addr v6, v8

    .line 15
    div-long/2addr v6, v0

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x1

    add-long/2addr v6, v2

    const-wide/16 v8, 0xfa0

    mul-long/2addr v6, v8

    const-wide/32 v8, 0x164b09

    .line 16
    div-long/2addr v6, v8

    const-wide/16 v8, 0x5b5

    mul-long/2addr v8, v6

    .line 17
    div-long/2addr v8, v0

    sub-long/2addr v2, v8

    const-wide/16 v0, 0x1f

    add-long/2addr v2, v0

    const-wide/16 v0, 0x50

    mul-long v8, v2, v0

    const-wide/16 v10, 0x98f

    .line 18
    div-long/2addr v8, v10

    mul-long/2addr v10, v8

    .line 19
    div-long/2addr v10, v0

    sub-long/2addr v2, v10

    long-to-int v0, v2

    const/4 v1, 0x2

    aput v0, p2, v1

    const-wide/16 v2, 0xb

    .line 20
    div-long v2, v8, v2

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    const-wide/16 v10, 0xc

    mul-long/2addr v10, v2

    sub-long/2addr v8, v10

    long-to-int v0, v8

    const/4 v8, 0x1

    .line 21
    aput v0, p2, v8

    const-wide/16 v9, 0x31

    sub-long/2addr v4, v9

    const-wide/16 v9, 0x64

    mul-long/2addr v4, v9

    add-long/2addr v4, v6

    add-long/2addr v4, v2

    long-to-int v0, v4

    const/4 v2, 0x0

    .line 22
    aput v0, p2, v2

    const-wide v3, 0x40f5180000000000L    # 86400.0

    mul-double/2addr p0, v3

    const-wide v3, 0x40ac200000000000L    # 3600.0

    div-double v3, p0, v3

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v0, v3

    const/4 v3, 0x3

    aput v0, p2, v3

    mul-int/lit16 v0, v0, 0xe10

    int-to-double v4, v0

    sub-double/2addr p0, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double v4, p0, v4

    .line 29
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    const/4 v4, 0x4

    aput v0, p2, v4

    const/16 v5, 0x3c

    mul-int/2addr v0, v5

    int-to-double v6, v0

    sub-double/2addr p0, v6

    .line 32
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    const/4 p1, 0x5

    aput p0, p2, p1

    .line 34
    aget v0, p2, v3

    add-int/lit8 v6, v0, 0xc

    aput v6, p2, v3

    if-ne p0, v5, :cond_3

    .line 38
    aput v2, p2, p1

    .line 39
    aget p0, p2, v4

    add-int/2addr p0, v8

    aput p0, p2, v4

    if-ne p0, v5, :cond_3

    .line 42
    aput v2, p2, v4

    add-int/lit8 v0, v0, 0xd

    .line 43
    aput v0, p2, v3

    const/16 p0, 0x18

    if-ne v0, p0, :cond_3

    .line 46
    aput v2, p2, v3

    .line 47
    aget p0, p2, v1

    add-int/2addr p0, v8

    aput p0, p2, v1

    .line 48
    aget p1, p2, v2

    aget v0, p2, v8

    invoke-static {p1, v0}, Lrockstarmobile/utilities/JulianDate;->getLastDayOfMonth(II)I

    move-result p1

    if-le p0, p1, :cond_3

    .line 50
    aput v8, p2, v1

    .line 51
    aget p0, p2, v8

    add-int/2addr p0, v8

    aput p0, p2, v8

    const/16 p1, 0xc

    if-ne p0, p1, :cond_3

    .line 54
    aput v8, p2, v8

    .line 55
    aget p0, p2, v2

    add-int/2addr p0, v8

    aput p0, p2, v2

    :cond_3
    return-object p2
.end method

.method public static encode(Ljava/util/Calendar;)D
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, v0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static/range {v1 .. v6}, Lrockstarmobile/utilities/JulianDate;->encodeJD(IIIIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static encodeJD(IIIIII)D
    .locals 4

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0xc

    add-int/lit8 p0, p0, -0x1

    :cond_0
    mul-int/lit16 p1, p1, 0x99

    add-int/lit16 p1, p1, -0x1c9

    .line 2
    div-int/lit8 p1, p1, 0x5

    add-int/2addr p2, p1

    mul-int/lit16 p1, p0, 0x16d

    add-int/2addr p2, p1

    int-to-long p1, p2

    int-to-double v0, p0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    add-long/2addr p1, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    sub-long/2addr p1, v2

    const-wide/high16 v2, 0x4079000000000000L    # 400.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    add-long/2addr p1, v0

    const-wide/32 v0, 0x1a431f

    add-long/2addr p1, v0

    mul-int/lit8 p4, p4, 0x3c

    add-int/2addr p5, p4

    add-int/lit8 p3, p3, -0xc

    mul-int/lit16 p3, p3, 0xe10

    add-int/2addr p5, p3

    int-to-double p3, p5

    const-wide v0, 0x40f5180000000000L    # 86400.0

    div-double/2addr p3, v0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double/2addr p3, v0

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Math;->round(D)J

    move-result-wide p3

    long-to-double p3, p3

    div-double/2addr p3, v0

    long-to-double p0, p1

    add-double/2addr p0, p3

    return-wide p0
.end method

.method public static encodeJD([I)D
    .locals 7

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    const/4 v0, 0x2

    aget v3, p0, v0

    const/4 v0, 0x3

    aget v4, p0, v0

    const/4 v0, 0x4

    aget v5, p0, v0

    const/4 v0, 0x5

    aget v6, p0, v0

    invoke-static/range {v1 .. v6}, Lrockstarmobile/utilities/JulianDate;->encodeJD(IIIIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getLastDayOfMonth(II)I
    .locals 9

    packed-switch p1, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    :pswitch_1
    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 4
    aput p0, v0, v1

    const/4 p0, 0x1

    .line 5
    aput p1, v0, p0

    const/16 p1, 0x20

    const/4 v2, 0x2

    .line 6
    aput p1, v0, v2

    .line 9
    :cond_0
    aget p1, v0, v2

    add-int/lit8 v5, p1, -0x1

    aput v5, v0, v2

    .line 10
    aget v3, v0, v1

    aget v4, v0, p0

    const/4 p1, 0x3

    aget v6, v0, p1

    const/4 p1, 0x4

    aget v7, v0, p1

    const/4 p1, 0x5

    aget v8, v0, p1

    invoke-static/range {v3 .. v8}, Lrockstarmobile/utilities/JulianDate;->IsValid(IIIIII)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 11
    aget p0, v0, v2

    return p0

    :pswitch_2
    const/16 p0, 0x1f

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static now()D
    .locals 2

    .line 1
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lrockstarmobile/utilities/JulianDate;->encode(Ljava/util/Calendar;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static zeroHour(D)D
    .locals 2

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public add(IIIIII)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lrockstarmobile/utilities/JulianDate;->get([I)[I

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    const/4 p1, 0x1

    .line 3
    aget v1, v0, p1

    add-int/2addr v1, p2

    aput v1, v0, p1

    const/4 p1, 0x2

    .line 4
    aget p2, v0, p1

    add-int/2addr p2, p3

    aput p2, v0, p1

    const/4 p1, 0x3

    .line 5
    aget p2, v0, p1

    add-int/2addr p2, p4

    aput p2, v0, p1

    const/4 p1, 0x4

    .line 6
    aget p2, v0, p1

    add-int/2addr p2, p5

    aput p2, v0, p1

    const/4 p1, 0x5

    .line 7
    aget p2, v0, p1

    add-int/2addr p2, p6

    aput p2, v0, p1

    .line 8
    invoke-virtual {p0, v0}, Lrockstarmobile/utilities/JulianDate;->set([I)V

    return-void
.end method

.method public get()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lrockstarmobile/utilities/JulianDate;->m_fJD:D

    return-wide v0
.end method

.method public get([I)[I
    .locals 2

    .line 2
    iget-wide v0, p0, Lrockstarmobile/utilities/JulianDate;->m_fJD:D

    invoke-static {v0, v1, p1}, Lrockstarmobile/utilities/JulianDate;->decodeJD(D[I)[I

    move-result-object p1

    return-object p1
.end method

.method public isAfter(D)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lrockstarmobile/utilities/JulianDate;->m_fJD:D

    cmpl-double p1, v0, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isBefore(D)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lrockstarmobile/utilities/JulianDate;->m_fJD:D

    cmpg-double p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public set(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lrockstarmobile/utilities/JulianDate;->m_fJD:D

    return-void
.end method

.method public set(IIIIII)V
    .locals 0

    .line 2
    invoke-static/range {p1 .. p6}, Lrockstarmobile/utilities/JulianDate;->encodeJD(IIIIII)D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lrockstarmobile/utilities/JulianDate;->set(D)V

    return-void
.end method

.method public set([I)V
    .locals 8

    const/4 v0, 0x0

    .line 3
    aget v2, p1, v0

    const/4 v0, 0x1

    aget v3, p1, v0

    const/4 v0, 0x2

    aget v4, p1, v0

    const/4 v0, 0x3

    aget v5, p1, v0

    const/4 v0, 0x4

    aget v6, p1, v0

    const/4 v0, 0x5

    aget v7, p1, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lrockstarmobile/utilities/JulianDate;->set(IIIIII)V

    return-void
.end method

.method public toSQL()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lrockstarmobile/utilities/JulianDate;->get([I)[I

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    .line 5
    aget v3, v0, v2

    const-string v4, " "

    const-string v5, "-"

    if-gez v3, :cond_0

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    aget v3, v0, v2

    neg-int v3, v3

    aput v3, v0, v2

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    :goto_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v3

    .line 14
    invoke-virtual {v3, v2}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    const/4 v6, 0x4

    .line 15
    invoke-virtual {v3, v6}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 16
    invoke-virtual {v3, v6}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 17
    aget v2, v0, v2

    int-to-long v7, v2

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    .line 18
    invoke-virtual {v3, v2}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 19
    invoke-virtual {v3, v2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 20
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v7, 0x1

    .line 21
    aget v7, v0, v7

    int-to-long v7, v7

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    aget v2, v0, v2

    int-to-long v7, v2

    invoke-virtual {v3, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    .line 25
    aget v2, v0, v2

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    aget v4, v0, v6

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x5

    .line 29
    aget v0, v0, v2

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrockstarmobile/utilities/JulianDate;->toSQL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    .line 5
    new-instance p1, Lrockstarmobile/utilities/JulianDate;

    invoke-virtual {p0}, Lrockstarmobile/utilities/JulianDate;->get()D

    move-result-wide v2

    add-double/2addr v2, v0

    invoke-direct {p1, v2, v3}, Lrockstarmobile/utilities/JulianDate;-><init>(D)V

    .line 6
    invoke-virtual {p1}, Lrockstarmobile/utilities/JulianDate;->toSQL()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
