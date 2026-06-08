.class public final Lio/sentry/util/UUIDStringUtils;
.super Ljava/lang/Object;
.source "UUIDStringUtils.java"


# static fields
.field private static final HEX_DIGITS:[C

.field private static final HEX_VALUES:[J

.field private static final SENTRY_SPAN_UUID_STRING_LENGTH:I = 0x10

.field private static final SENTRY_UUID_STRING_LENGTH:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x10

    .line 41
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const/16 v0, 0x80

    .line 44
    new-array v0, v0, [J

    sput-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_VALUES:[J

    const-wide/16 v1, -0x1

    .line 47
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    const-wide/16 v1, 0x0

    const/16 v3, 0x30

    .line 49
    aput-wide v1, v0, v3

    const-wide/16 v1, 0x1

    const/16 v3, 0x31

    .line 50
    aput-wide v1, v0, v3

    const-wide/16 v1, 0x2

    const/16 v3, 0x32

    .line 51
    aput-wide v1, v0, v3

    const-wide/16 v1, 0x3

    const/16 v3, 0x33

    .line 52
    aput-wide v1, v0, v3

    const-wide/16 v1, 0x4

    const/16 v3, 0x34

    .line 53
    aput-wide v1, v0, v3

    const-wide/16 v1, 0x5

    const/16 v3, 0x35

    .line 54
    aput-wide v1, v0, v3

    const-wide/16 v1, 0x6

    const/16 v3, 0x36

    .line 55
    aput-wide v1, v0, v3

    const-wide/16 v1, 0x7

    const/16 v3, 0x37

    .line 56
    aput-wide v1, v0, v3

    const-wide/16 v1, 0x8

    const/16 v3, 0x38

    .line 57
    aput-wide v1, v0, v3

    const-wide/16 v1, 0x9

    const/16 v3, 0x39

    .line 58
    aput-wide v1, v0, v3

    const/16 v1, 0x61

    const-wide/16 v2, 0xa

    .line 60
    aput-wide v2, v0, v1

    const/16 v1, 0x62

    const-wide/16 v4, 0xb

    .line 61
    aput-wide v4, v0, v1

    const/16 v1, 0x63

    const-wide/16 v6, 0xc

    .line 62
    aput-wide v6, v0, v1

    const/16 v1, 0x64

    const-wide/16 v8, 0xd

    .line 63
    aput-wide v8, v0, v1

    const/16 v1, 0x65

    const-wide/16 v10, 0xe

    .line 64
    aput-wide v10, v0, v1

    const/16 v1, 0x66

    const-wide/16 v12, 0xf

    .line 65
    aput-wide v12, v0, v1

    const/16 v1, 0x41

    .line 67
    aput-wide v2, v0, v1

    const/16 v1, 0x42

    .line 68
    aput-wide v4, v0, v1

    const/16 v1, 0x43

    .line 69
    aput-wide v6, v0, v1

    const/16 v1, 0x44

    .line 70
    aput-wide v8, v0, v1

    const/16 v1, 0x45

    .line 71
    aput-wide v10, v0, v1

    const/16 v1, 0x46

    .line 72
    aput-wide v12, v0, v1

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillMostSignificantBits([CJ)V
    .locals 6

    .line 124
    sget-object v0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/high16 v1, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v1, p1

    const/16 v3, 0x3c

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    aget-char v1, v0, v1

    const/4 v2, 0x0

    aput-char v1, p0, v2

    const-wide/high16 v1, 0xf00000000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x38

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    .line 125
    aget-char v1, v0, v1

    const/4 v2, 0x1

    aput-char v1, p0, v2

    const-wide/high16 v1, 0xf0000000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x34

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    .line 126
    aget-char v1, v0, v1

    const/4 v2, 0x2

    aput-char v1, p0, v2

    const-wide/high16 v1, 0xf000000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x30

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    .line 127
    aget-char v1, v0, v1

    const/4 v2, 0x3

    aput-char v1, p0, v2

    const-wide v1, 0xf00000000000L

    and-long/2addr v1, p1

    const/16 v3, 0x2c

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    .line 128
    aget-char v1, v0, v1

    const/4 v2, 0x4

    aput-char v1, p0, v2

    const-wide v3, 0xf0000000000L

    and-long/2addr v3, p1

    const/16 v1, 0x28

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    .line 129
    aget-char v1, v0, v1

    const/4 v3, 0x5

    aput-char v1, p0, v3

    const-wide v3, 0xf000000000L

    and-long/2addr v3, p1

    const/16 v1, 0x24

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    .line 130
    aget-char v1, v0, v1

    const/4 v3, 0x6

    aput-char v1, p0, v3

    const-wide v3, 0xf00000000L

    and-long/2addr v3, p1

    const/16 v1, 0x20

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    .line 131
    aget-char v1, v0, v1

    const/4 v3, 0x7

    aput-char v1, p0, v3

    const-wide v3, 0xf0000000L

    and-long/2addr v3, p1

    const/16 v1, 0x1c

    ushr-long/2addr v3, v1

    long-to-int v1, v3

    .line 132
    aget-char v1, v0, v1

    const/16 v3, 0x8

    aput-char v1, p0, v3

    const-wide/32 v4, 0xf000000

    and-long/2addr v4, p1

    const/16 v1, 0x18

    ushr-long/2addr v4, v1

    long-to-int v1, v4

    .line 133
    aget-char v1, v0, v1

    const/16 v4, 0x9

    aput-char v1, p0, v4

    const-wide/32 v4, 0xf00000

    and-long/2addr v4, p1

    const/16 v1, 0x14

    ushr-long/2addr v4, v1

    long-to-int v1, v4

    .line 134
    aget-char v1, v0, v1

    const/16 v4, 0xa

    aput-char v1, p0, v4

    const-wide/32 v4, 0xf0000

    and-long/2addr v4, p1

    const/16 v1, 0x10

    ushr-long/2addr v4, v1

    long-to-int v1, v4

    .line 135
    aget-char v1, v0, v1

    const/16 v4, 0xb

    aput-char v1, p0, v4

    const-wide/32 v4, 0xf000

    and-long/2addr v4, p1

    const/16 v1, 0xc

    ushr-long/2addr v4, v1

    long-to-int v4, v4

    .line 136
    aget-char v4, v0, v4

    aput-char v4, p0, v1

    const-wide/16 v4, 0xf00

    and-long/2addr v4, p1

    ushr-long v3, v4, v3

    long-to-int v1, v3

    .line 137
    aget-char v1, v0, v1

    const/16 v3, 0xd

    aput-char v1, p0, v3

    const-wide/16 v3, 0xf0

    and-long/2addr v3, p1

    ushr-long v1, v3, v2

    long-to-int v1, v1

    .line 138
    aget-char v1, v0, v1

    const/16 v2, 0xe

    aput-char v1, p0, v2

    const-wide/16 v1, 0xf

    and-long/2addr p1, v1

    long-to-int p1, p1

    .line 139
    aget-char p1, v0, p1

    const/16 p2, 0xf

    aput-char p1, p0, p2

    return-void
.end method

.method public static toSentryIdString(JJ)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x20

    .line 84
    new-array v1, v0, [C

    .line 86
    invoke-static {v1, p0, p1}, Lio/sentry/util/UUIDStringUtils;->fillMostSignificantBits([CJ)V

    .line 88
    sget-object p0, Lio/sentry/util/UUIDStringUtils;->HEX_DIGITS:[C

    const-wide/high16 v2, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v2, p2

    const/16 p1, 0x3c

    ushr-long/2addr v2, p1

    long-to-int p1, v2

    aget-char p1, p0, p1

    const/16 v2, 0x10

    aput-char p1, v1, v2

    const-wide/high16 v3, 0xf00000000000000L

    and-long/2addr v3, p2

    const/16 p1, 0x38

    ushr-long/2addr v3, p1

    long-to-int p1, v3

    .line 89
    aget-char p1, p0, p1

    const/16 v3, 0x11

    aput-char p1, v1, v3

    const-wide/high16 v3, 0xf0000000000000L

    and-long/2addr v3, p2

    const/16 p1, 0x34

    ushr-long/2addr v3, p1

    long-to-int p1, v3

    .line 90
    aget-char p1, p0, p1

    const/16 v3, 0x12

    aput-char p1, v1, v3

    const-wide/high16 v3, 0xf000000000000L

    and-long/2addr v3, p2

    const/16 p1, 0x30

    ushr-long/2addr v3, p1

    long-to-int p1, v3

    .line 91
    aget-char p1, p0, p1

    const/16 v3, 0x13

    aput-char p1, v1, v3

    const-wide v3, 0xf00000000000L

    and-long/2addr v3, p2

    const/16 p1, 0x2c

    ushr-long/2addr v3, p1

    long-to-int p1, v3

    .line 92
    aget-char p1, p0, p1

    const/16 v3, 0x14

    aput-char p1, v1, v3

    const-wide v4, 0xf0000000000L

    and-long/2addr v4, p2

    const/16 p1, 0x28

    ushr-long/2addr v4, p1

    long-to-int p1, v4

    .line 93
    aget-char p1, p0, p1

    const/16 v4, 0x15

    aput-char p1, v1, v4

    const-wide v4, 0xf000000000L

    and-long/2addr v4, p2

    const/16 p1, 0x24

    ushr-long/2addr v4, p1

    long-to-int p1, v4

    .line 94
    aget-char p1, p0, p1

    const/16 v4, 0x16

    aput-char p1, v1, v4

    const-wide v4, 0xf00000000L

    and-long/2addr v4, p2

    ushr-long/2addr v4, v0

    long-to-int p1, v4

    .line 95
    aget-char p1, p0, p1

    const/16 v0, 0x17

    aput-char p1, v1, v0

    const-wide v4, 0xf0000000L

    and-long/2addr v4, p2

    const/16 p1, 0x1c

    ushr-long/2addr v4, p1

    long-to-int v0, v4

    .line 96
    aget-char v0, p0, v0

    const/16 v4, 0x18

    aput-char v0, v1, v4

    const-wide/32 v5, 0xf000000

    and-long/2addr v5, p2

    ushr-long v4, v5, v4

    long-to-int v0, v4

    .line 97
    aget-char v0, p0, v0

    const/16 v4, 0x19

    aput-char v0, v1, v4

    const-wide/32 v4, 0xf00000

    and-long/2addr v4, p2

    ushr-long v3, v4, v3

    long-to-int v0, v3

    .line 98
    aget-char v0, p0, v0

    const/16 v3, 0x1a

    aput-char v0, v1, v3

    const-wide/32 v3, 0xf0000

    and-long/2addr v3, p2

    ushr-long v2, v3, v2

    long-to-int v0, v2

    .line 99
    aget-char v0, p0, v0

    const/16 v2, 0x1b

    aput-char v0, v1, v2

    const-wide/32 v2, 0xf000

    and-long/2addr v2, p2

    const/16 v0, 0xc

    ushr-long/2addr v2, v0

    long-to-int v0, v2

    .line 100
    aget-char v0, p0, v0

    aput-char v0, v1, p1

    const-wide/16 v2, 0xf00

    and-long/2addr v2, p2

    const/16 p1, 0x8

    ushr-long/2addr v2, p1

    long-to-int p1, v2

    .line 101
    aget-char p1, p0, p1

    const/16 v0, 0x1d

    aput-char p1, v1, v0

    const-wide/16 v2, 0xf0

    and-long/2addr v2, p2

    const/4 p1, 0x4

    ushr-long/2addr v2, p1

    long-to-int p1, v2

    .line 102
    aget-char p1, p0, p1

    const/16 v0, 0x1e

    aput-char p1, v1, v0

    const-wide/16 v2, 0xf

    and-long p1, p2, v2

    long-to-int p1, p1

    .line 103
    aget-char p0, p0, p1

    const/16 p1, 0x1f

    aput-char p0, v1, p1

    .line 105
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static toSentryIdString(Ljava/util/UUID;)Ljava/lang/String;
    .locals 4

    .line 77
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 78
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 80
    invoke-static {v0, v1, v2, v3}, Lio/sentry/util/UUIDStringUtils;->toSentryIdString(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toSentrySpanIdString(J)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x10

    .line 115
    new-array v0, v0, [C

    .line 117
    invoke-static {v0, p0, p1}, Lio/sentry/util/UUIDStringUtils;->fillMostSignificantBits([CJ)V

    .line 119
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static toSentrySpanIdString(Ljava/util/UUID;)Ljava/lang/String;
    .locals 2

    .line 110
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 111
    invoke-static {v0, v1}, Lio/sentry/util/UUIDStringUtils;->toSentrySpanIdString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
