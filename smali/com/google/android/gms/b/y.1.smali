.class final Lcom/google/android/gms/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/b/x;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/y;->a:Lcom/google/android/gms/b/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/b/y;->a:Lcom/google/android/gms/b/x;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/x;->a(Lcom/google/android/gms/b/x;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/b/y;->a:Lcom/google/android/gms/b/x;

    invoke-virtual {v0}, Lcom/google/android/gms/b/x;->b()V

    return-void
.end method
