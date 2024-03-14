.class final Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-class v0, [F

    const-string v1, "params"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    invoke-static {}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->c()[F

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->a(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    const/4 v1, 0x0

    aput v0, p0, v1

    invoke-static {}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->c()[F

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->a(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    const/4 v1, 0x1

    aput v0, p0, v1

    invoke-static {}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->c()[F

    move-result-object p0

    invoke-static {p1}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->a(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    const/4 v0, 0x2

    aput p1, p0, v0

    invoke-static {}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->c()[F

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/folder/FolderPreviewItemAnim;

    check-cast p2, [F

    invoke-static {p1, p2}, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->b(Lcom/android/launcher3/folder/FolderPreviewItemAnim;[F)V

    return-void
.end method
