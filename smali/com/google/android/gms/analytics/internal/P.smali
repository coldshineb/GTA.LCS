.class final Lcom/google/android/gms/analytics/internal/P;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/analytics/internal/M;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/M;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/P;->a:Lcom/google/android/gms/analytics/internal/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/P;->a:Lcom/google/android/gms/analytics/internal/M;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/M;->c()V

    return-void
.end method
