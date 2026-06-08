.class final Lcom/google/android/gms/analytics/internal/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/google/android/gms/analytics/internal/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/s;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/t;->b:Lcom/google/android/gms/analytics/internal/s;

    iput-boolean p2, p0, Lcom/google/android/gms/analytics/internal/t;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/t;->b:Lcom/google/android/gms/analytics/internal/s;

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/s;->a(Lcom/google/android/gms/analytics/internal/s;)Lcom/google/android/gms/analytics/internal/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/M;->g()V

    return-void
.end method
