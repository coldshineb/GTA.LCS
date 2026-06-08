.class final Lcom/google/android/gms/analytics/internal/I;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/ComponentName;

.field private synthetic b:Lcom/google/android/gms/analytics/internal/G;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/G;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/internal/I;->b:Lcom/google/android/gms/analytics/internal/G;

    iput-object p2, p0, Lcom/google/android/gms/analytics/internal/I;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/I;->b:Lcom/google/android/gms/analytics/internal/G;

    iget-object v0, v0, Lcom/google/android/gms/analytics/internal/G;->a:Lcom/google/android/gms/analytics/internal/E;

    iget-object v1, p0, Lcom/google/android/gms/analytics/internal/I;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/internal/E;->a(Lcom/google/android/gms/analytics/internal/E;Landroid/content/ComponentName;)V

    return-void
.end method
