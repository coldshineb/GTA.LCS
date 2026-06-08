.class public final Lcom/google/android/gms/ads/internal/client/g;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/t;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/ads/internal/client/g;


# instance fields
.field private final c:Lcom/google/android/gms/ads/internal/util/client/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/g;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/g;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/g;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/internal/client/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/ads/internal/client/g;->b:Lcom/google/android/gms/ads/internal/client/g;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/util/client/a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/client/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/g;->c:Lcom/google/android/gms/ads/internal/util/client/a;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/d;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/d;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/h;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/h;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/b;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/b;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/n;

    invoke-direct {v0}, Lcom/google/android/gms/b/n;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/reward/client/a;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/reward/client/a;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/ads/internal/util/client/a;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/g;->b()Lcom/google/android/gms/ads/internal/client/g;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/g;->c:Lcom/google/android/gms/ads/internal/util/client/a;

    return-object v0
.end method

.method private static b()Lcom/google/android/gms/ads/internal/client/g;
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/client/g;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/client/g;->b:Lcom/google/android/gms/ads/internal/client/g;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
