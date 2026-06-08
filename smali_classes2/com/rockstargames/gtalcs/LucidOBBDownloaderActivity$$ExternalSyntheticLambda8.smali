.class public final synthetic Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda8;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda8;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity$$ExternalSyntheticLambda8;->f$1:Ljava/util/List;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/rockstargames/gtalcs/LucidOBBDownloaderActivity;->$r8$lambda$BkXn7iLeXMRHXxgcD8uvTg8vKvs(Ljava/util/List;Ljava/util/List;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
