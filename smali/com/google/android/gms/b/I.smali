.class public Lcom/google/android/gms/b/I;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/t;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/b/I;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/google/android/gms/b/I;
    .locals 1

    const/16 v0, 0x13

    if-lt p0, v0, :cond_0

    new-instance v0, Lcom/google/android/gms/b/P;

    invoke-direct {v0}, Lcom/google/android/gms/b/P;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x12

    if-lt p0, v0, :cond_1

    new-instance v0, Lcom/google/android/gms/b/N;

    invoke-direct {v0}, Lcom/google/android/gms/b/N;-><init>()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    if-lt p0, v0, :cond_2

    new-instance v0, Lcom/google/android/gms/b/M;

    invoke-direct {v0}, Lcom/google/android/gms/b/M;-><init>()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x10

    if-lt p0, v0, :cond_3

    new-instance v0, Lcom/google/android/gms/b/O;

    invoke-direct {v0}, Lcom/google/android/gms/b/O;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v0, 0xe

    if-lt p0, v0, :cond_4

    new-instance v0, Lcom/google/android/gms/b/L;

    invoke-direct {v0}, Lcom/google/android/gms/b/L;-><init>()V

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    if-lt p0, v0, :cond_5

    new-instance v0, Lcom/google/android/gms/b/K;

    invoke-direct {v0}, Lcom/google/android/gms/b/K;-><init>()V

    goto :goto_0

    :cond_5
    const/16 v0, 0x9

    if-lt p0, v0, :cond_6

    new-instance v0, Lcom/google/android/gms/b/J;

    invoke-direct {v0}, Lcom/google/android/gms/b/J;-><init>()V

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/b/I;

    invoke-direct {v0}, Lcom/google/android/gms/b/I;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
