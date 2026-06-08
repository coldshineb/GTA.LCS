.class final Lcom/rockstargames/gtalcs/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/rockstargames/gtalcs/GTAActivity;


# direct methods
.method constructor <init>(Lcom/rockstargames/gtalcs/GTAActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/rockstargames/gtalcs/l;->a:Lcom/rockstargames/gtalcs/GTAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/rockstargames/gtalcs/l;->a:Lcom/rockstargames/gtalcs/GTAActivity;

    invoke-virtual {v0}, Lcom/rockstargames/gtalcs/GTAActivity;->finish()V

    return-void
.end method
