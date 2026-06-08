.class final Lcom/google/android/gms/analytics/internal/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/analytics/internal/e;

.field private synthetic b:Lcom/google/android/gms/analytics/internal/G;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/G;Lcom/google/android/gms/analytics/internal/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/H;->b:Lcom/google/android/gms/analytics/internal/G;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/H;->a:Lcom/google/android/gms/analytics/internal/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/H;->b:Lcom/google/android/gms/analytics/internal/G;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/G;->a:Lcom/google/android/gms/analytics/internal/E;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/E;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/H;->b:Lcom/google/android/gms/analytics/internal/G;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/G;->a:Lcom/google/android/gms/analytics/internal/E;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/E;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/H;->b:Lcom/google/android/gms/analytics/internal/G;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/G;->a:Lcom/google/android/gms/analytics/internal/E;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/H;->a:Lcom/google/android/gms/analytics/internal/e;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/E;->a(Lcom/google/android/gms/analytics/internal/E;Lcom/google/android/gms/analytics/internal/e;)V

    :cond_0
    return-void
.end method
