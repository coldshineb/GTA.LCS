.class public final Lcom/google/android/gms/analytics/internal/C;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Landroid/support/v4/app/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/C;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/C;->b:Landroid/content/Context;

    return-void
.end method

.method protected static a(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/S;
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/internal/S;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/S;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    return-object v0
.end method

.method protected static b(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/Z;
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/internal/Z;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/Z;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    return-object v0
.end method

.method public static d(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/E;
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/internal/E;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/E;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    return-object v0
.end method

.method public static e(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/ae;
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/internal/ae;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/ae;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    return-object v0
.end method

.method public static f(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/n;
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/internal/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/n;-><init>(Lcom/google/android/gms/analytics/internal/A;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/C;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/C;->b:Landroid/content/Context;

    return-object v0
.end method

.method final c(Lcom/google/android/gms/analytics/internal/A;)Lcom/google/android/gms/analytics/internal/M;
    .locals 1

    new-instance v0, Lcom/google/android/gms/analytics/internal/M;

    invoke-direct {v0, p1, p0}, Lcom/google/android/gms/analytics/internal/M;-><init>(Lcom/google/android/gms/analytics/internal/A;Lcom/google/android/gms/analytics/internal/C;)V

    return-object v0
.end method
