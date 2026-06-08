.class public final Lcom/google/android/gms/common/stats/c;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gms:common:stats:max_num_of_events"

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/b/ab;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/b/ab;

    return-void
.end method
