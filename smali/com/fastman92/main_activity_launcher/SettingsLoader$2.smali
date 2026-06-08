.class Lcom/fastman92/main_activity_launcher/SettingsLoader$2;
.super Ljava/lang/Object;
.source "SettingsLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fastman92/main_activity_launcher/SettingsLoader;->InitializeSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fastman92/main_activity_launcher/SettingsLoader;


# direct methods
.method constructor <init>(Lcom/fastman92/main_activity_launcher/SettingsLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fastman92/main_activity_launcher/SettingsLoader;

    .line 349
    iput-object p1, p0, Lcom/fastman92/main_activity_launcher/SettingsLoader$2;->this$0:Lcom/fastman92/main_activity_launcher/SettingsLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 352
    new-instance v0, Lcom/fastman92/main_activity_launcher/Debugging;

    invoke-direct {v0}, Lcom/fastman92/main_activity_launcher/Debugging;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x115c

    invoke-static {v0, v1}, Lcom/fastman92/main_activity_launcher/Debugging;->StartShell(Ljava/lang/String;I)V

    .line 353
    return-void
.end method
