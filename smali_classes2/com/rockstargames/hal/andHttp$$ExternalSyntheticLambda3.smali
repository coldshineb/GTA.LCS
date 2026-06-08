.class public final synthetic Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/rockstargames/hal/andHttp;

.field public final synthetic f$1:[B

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/rockstargames/hal/andHttp;[BI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda3;->f$0:Lcom/rockstargames/hal/andHttp;

    iput-object p2, p0, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda3;->f$1:[B

    iput p3, p0, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda3;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda3;->f$0:Lcom/rockstargames/hal/andHttp;

    iget-object v1, p0, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda3;->f$1:[B

    iget v2, p0, Lcom/rockstargames/hal/andHttp$$ExternalSyntheticLambda3;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/rockstargames/hal/andHttp;->lambda$executeAsync$5$com-rockstargames-hal-andHttp([BI)V

    return-void
.end method
