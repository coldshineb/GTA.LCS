.class public abstract Lcom/google/android/gms/b/x;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/b/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private volatile b:Ljava/lang/Thread;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/y;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/y;-><init>(Lcom/google/android/gms/b/x;)V

    iput-object v0, p0, Lcom/google/android/gms/b/x;->a:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/b/x;->c:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/x;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/x;->b:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/x;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/b/A;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/b/T;

    move-result-object v0

    return-object v0
.end method

.method public abstract b()V
.end method
