.class public final synthetic Lcom/fastman92/main_activity_launcher/Functions$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fastman92/main_activity_launcher/Functions$$ExternalSyntheticLambda0;->f$0:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/fastman92/main_activity_launcher/Functions$$ExternalSyntheticLambda0;->f$0:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static {v0, p1, p2}, Lcom/fastman92/main_activity_launcher/Functions;->lambda$ShowMessageBox$0(Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
