.class Lcom/android/quickstep/views/TaskThumbnailView$2;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/quickstep/views/TaskThumbnailView;)Ljava/lang/Float;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->b(Lcom/android/quickstep/views/TaskThumbnailView;)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView$2;->get(Lcom/android/quickstep/views/TaskThumbnailView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/quickstep/views/TaskThumbnailView;F)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->setSplashAlpha(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/TaskThumbnailView$2;->setValue(Lcom/android/quickstep/views/TaskThumbnailView;F)V

    return-void
.end method
