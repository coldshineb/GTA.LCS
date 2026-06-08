.class public Lcom/fastman92/main_activity_launcher/AlteredType/android/app/Activity;
.super Landroid/app/Activity;
.source "Activity.java"


# instance fields
.field mBaseOriginal:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    iput-object p1, p0, Lcom/fastman92/main_activity_launcher/AlteredType/android/app/Activity;->mBaseOriginal:Landroid/content/Context;

    new-instance v0, Lcom/fastman92/main_activity_launcher/AlteredContext;

    invoke-direct {v0, p1}, Lcom/fastman92/main_activity_launcher/AlteredContext;-><init>(Landroid/content/Context;)V

    invoke-super {p0, v0}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getBaseContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/fastman92/main_activity_launcher/AlteredType/android/app/Activity;->mBaseOriginal:Landroid/content/Context;

    return-object v0
.end method
