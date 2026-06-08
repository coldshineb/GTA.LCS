.class public final Lcom/google/android/gms/ads/internal/b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/t;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/ads/internal/b;


# instance fields
.field private final c:Lcom/google/android/gms/b/G;

.field private final d:Lcom/google/android/gms/b/I;

.field private final e:Lcom/google/android/gms/b/v;

.field private final f:Lcom/google/android/gms/b/i;

.field private final g:Lcom/google/android/gms/b/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/b;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/ads/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/b;-><init>()V

    sget-object v1, Lcom/google/android/gms/ads/internal/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/ads/internal/b;->b:Lcom/google/android/gms/ads/internal/b;

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
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/request/b;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/b;-><init>()V

    new-instance v0, Landroid/support/v4/a/a;

    invoke-direct {v0}, Landroid/support/v4/a/a;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/b;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/b;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/r;

    invoke-direct {v0}, Lcom/google/android/gms/b/r;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/G;

    invoke-direct {v0}, Lcom/google/android/gms/b/G;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/b/G;

    new-instance v0, Lcom/google/android/gms/b/W;

    invoke-direct {v0}, Lcom/google/android/gms/b/W;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/google/android/gms/b/I;->a(I)Lcom/google/android/gms/b/I;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/b;->d:Lcom/google/android/gms/b/I;

    new-instance v0, Lcom/google/android/gms/b/v;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/b/G;

    invoke-direct {v0, v1}, Lcom/google/android/gms/b/v;-><init>(Lcom/google/android/gms/b/G;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/b/v;

    new-instance v0, Lcom/google/android/gms/b/am;

    invoke-direct {v0}, Lcom/google/android/gms/b/am;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/m;

    invoke-direct {v0}, Lcom/google/android/gms/b/m;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/u;

    invoke-direct {v0}, Lcom/google/android/gms/b/u;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/j;

    invoke-direct {v0}, Lcom/google/android/gms/b/j;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/i;

    invoke-direct {v0}, Lcom/google/android/gms/b/i;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/b/i;

    new-instance v0, Lcom/google/android/gms/b/k;

    invoke-direct {v0}, Lcom/google/android/gms/b/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/b;->g:Lcom/google/android/gms/b/k;

    new-instance v0, Lcom/google/android/gms/ads/internal/purchase/b;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/purchase/b;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/Q;

    invoke-direct {v0}, Lcom/google/android/gms/b/Q;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/p;

    invoke-direct {v0}, Lcom/google/android/gms/b/p;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/o;

    invoke-direct {v0}, Lcom/google/android/gms/b/o;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/b/G;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/b;->f()Lcom/google/android/gms/ads/internal/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->c:Lcom/google/android/gms/b/G;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/b/I;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/b;->f()Lcom/google/android/gms/ads/internal/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->d:Lcom/google/android/gms/b/I;

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/b/v;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/b;->f()Lcom/google/android/gms/ads/internal/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->e:Lcom/google/android/gms/b/v;

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/b/i;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/b;->f()Lcom/google/android/gms/ads/internal/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->f:Lcom/google/android/gms/b/i;

    return-object v0
.end method

.method public static e()Lcom/google/android/gms/b/k;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/b;->f()Lcom/google/android/gms/ads/internal/b;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/b;->g:Lcom/google/android/gms/b/k;

    return-object v0
.end method

.method private static f()Lcom/google/android/gms/ads/internal/b;
    .locals 2

    sget-object v1, Lcom/google/android/gms/ads/internal/b;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/ads/internal/b;->b:Lcom/google/android/gms/ads/internal/b;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
