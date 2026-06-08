.class public final Lcom/rockstargames/hal/q;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field private synthetic c:Lcom/rockstargames/hal/andDropDownList;


# direct methods
.method public constructor <init>(Lcom/rockstargames/hal/andDropDownList;)V
    .locals 1

    iput-object p1, p0, Lcom/rockstargames/hal/q;->c:Lcom/rockstargames/hal/andDropDownList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/rockstargames/hal/q;->c:Lcom/rockstargames/hal/andDropDownList;

    invoke-virtual {v0}, Lcom/rockstargames/hal/andDropDownList;->GetSpinner()Landroid/widget/Spinner;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rockstargames/hal/q;->a:Ljava/lang/String;

    return-object v0
.end method
