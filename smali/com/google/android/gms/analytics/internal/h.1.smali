.class public final Lcom/google/android/gms/analytics/internal/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:I


# direct methods
.method private constructor <init>(IJLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/google/android/gms/analytics/internal/h;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x3c

    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/google/android/gms/analytics/internal/h;-><init>(IJLjava/lang/String;)V

    return-void
.end method
