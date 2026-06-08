.class public final synthetic Lrockstarmobile/Rockstar$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;IILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput p2, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda0;->f$3:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget v1, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lrockstarmobile/Rockstar$$ExternalSyntheticLambda0;->f$3:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, v1, v2, v3}, Lrockstarmobile/Rockstar;->lambda$showMultipleChoices$23(Landroid/app/Activity;IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
