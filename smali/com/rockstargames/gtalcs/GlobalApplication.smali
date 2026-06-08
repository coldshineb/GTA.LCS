.class public Lcom/rockstargames/gtalcs/GlobalApplication;
.super Landroid/app/Application;


# instance fields
.field private a:Lcom/google/android/gms/analytics/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private declared-synchronized a()Lcom/google/android/gms/analytics/k;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GlobalApplication;->a:Lcom/google/android/gms/analytics/k;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/analytics/i;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/i;

    move-result-object v0

    const-string v1, "UA-60020450-23"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/i;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/k;

    move-result-object v0

    iput-object v0, p0, Lcom/rockstargames/gtalcs/GlobalApplication;->a:Lcom/google/android/gms/analytics/k;

    :cond_0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GlobalApplication;->a:Lcom/google/android/gms/analytics/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "gdkggt8uszk0"

    const-string v1, "production"

    new-instance v2, Lcom/adjust/sdk/j;

    invoke-direct {v2, p0, v0, v1}, Lcom/adjust/sdk/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/adjust/sdk/x;->a:Lcom/adjust/sdk/x;

    invoke-virtual {v2, v0}, Lcom/adjust/sdk/j;->a(Lcom/adjust/sdk/x;)V

    invoke-static {v2}, Landroid/support/v4/app/a;->a(Lcom/adjust/sdk/j;)V

    new-instance v0, Lcom/rockstargames/gtalcs/C;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/rockstargames/gtalcs/C;-><init>(B)V

    invoke-virtual {p0, v0}, Lcom/rockstargames/gtalcs/GlobalApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-direct {p0}, Lcom/rockstargames/gtalcs/GlobalApplication;->a()Lcom/google/android/gms/analytics/k;

    return-void
.end method
