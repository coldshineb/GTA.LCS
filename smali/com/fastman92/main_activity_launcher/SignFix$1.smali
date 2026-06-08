.class Lcom/fastman92/main_activity_launcher/SignFix$1;
.super Ljava/lang/Object;
.source "SignFix.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fastman92/main_activity_launcher/SignFix;->killPM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fastman92/main_activity_launcher/SignFix;

.field final synthetic val$SignFixThis:Lcom/fastman92/main_activity_launcher/SignFix;

.field final synthetic val$originalCreator:Landroid/os/Parcelable$Creator;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fastman92/main_activity_launcher/SignFix;Landroid/os/Parcelable$Creator;Ljava/lang/String;Lcom/fastman92/main_activity_launcher/SignFix;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fastman92/main_activity_launcher/SignFix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/fastman92/main_activity_launcher/SignFix$1;->this$0:Lcom/fastman92/main_activity_launcher/SignFix;

    iput-object p2, p0, Lcom/fastman92/main_activity_launcher/SignFix$1;->val$originalCreator:Landroid/os/Parcelable$Creator;

    iput-object p3, p0, Lcom/fastman92/main_activity_launcher/SignFix$1;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/fastman92/main_activity_launcher/SignFix$1;->val$SignFixThis:Lcom/fastman92/main_activity_launcher/SignFix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 96
    iget-object v0, p0, Lcom/fastman92/main_activity_launcher/SignFix$1;->val$originalCreator:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 98
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFromParcel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fastman92 app launcher"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/fastman92/main_activity_launcher/SignFix$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/fastman92/main_activity_launcher/SignFix$1;->val$SignFixThis:Lcom/fastman92/main_activity_launcher/SignFix;

    iget-object v1, v1, Lcom/fastman92/main_activity_launcher/SignFix;->originalSignatures:[Landroid/content/pm/Signature;

    iput-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 103
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    .line 104
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v1

    .line 106
    .local v1, "signaturesArray":[Landroid/content/pm/Signature;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 107
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 108
    iget-object v3, p0, Lcom/fastman92/main_activity_launcher/SignFix$1;->val$SignFixThis:Lcom/fastman92/main_activity_launcher/SignFix;

    iget-object v3, v3, Lcom/fastman92/main_activity_launcher/SignFix;->originalSignatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v2

    aput-object v3, v1, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "signaturesArray":[Landroid/content/pm/Signature;
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/fastman92/main_activity_launcher/SignFix$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/content/pm/PackageInfo;
    .locals 1
    .param p1, "size"    # I

    .line 118
    iget-object v0, p0, Lcom/fastman92/main_activity_launcher/SignFix$1;->val$originalCreator:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p0, p1}, Lcom/fastman92/main_activity_launcher/SignFix$1;->newArray(I)[Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method
