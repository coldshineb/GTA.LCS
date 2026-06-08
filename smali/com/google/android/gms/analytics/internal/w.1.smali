.class final Lcom/google/android/gms/analytics/internal/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/analytics/internal/af;

.field private synthetic b:Lcom/google/android/gms/analytics/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/s;Lcom/google/android/gms/analytics/internal/af;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/s;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/w;->a:Lcom/google/android/gms/analytics/internal/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/w;->b:Lcom/google/android/gms/analytics/internal/s;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/s;->a(Lcom/google/android/gms/analytics/internal/s;)Lcom/google/android/gms/analytics/internal/M;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/w;->a:Lcom/google/android/gms/analytics/internal/af;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/internal/M;->a(Lcom/google/android/gms/analytics/internal/af;)V

    return-void
.end method
