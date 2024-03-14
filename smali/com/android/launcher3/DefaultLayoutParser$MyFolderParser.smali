.class final Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;
.super Lcom/android/launcher3/AutoInstallsLayout$FolderParser;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {p1}, Lcom/android/launcher3/DefaultLayoutParser;->getFolderElementsMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public final parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 1

    const-string v0, "folderItems"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->getAttributeResourceValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$MyFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object p1, p1, Lcom/android/launcher3/AutoInstallsLayout;->mSourceRes:Lcom/android/launcher3/AutoInstallsLayout$SourceResources;

    invoke-interface {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout$SourceResources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    const-string v0, "folder"

    invoke-static {p1, v0}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p0

    return p0
.end method
