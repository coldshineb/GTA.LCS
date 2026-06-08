.class public final synthetic Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/view/Surface;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/Surface;II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda4;->f$0:Landroid/view/Surface;

    iput p2, p0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda4;->f$1:I

    iput p3, p0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda4;->f$0:Landroid/view/Surface;

    iget v1, p0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda4;->f$1:I

    iget v2, p0, Lcom/rockstargames/gtalcs/GameGlThread$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/rockstargames/gtalcs/GameGlThread;->$r8$lambda$zxDN_IxvMYSV6ANfhYcFxFPx5zs(Landroid/view/Surface;II)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
