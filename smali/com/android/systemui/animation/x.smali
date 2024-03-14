.class public final Lcom/android/systemui/animation/x;
.super Landroid/util/IntProperty;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/x;->a:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-direct {p0, p2}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/animation/A;->a:Lcom/android/systemui/animation/z;

    iget-object v0, p0, Lcom/android/systemui/animation/x;->a:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p1, v0}, Lcom/android/systemui/animation/z;->a(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/animation/x;->a:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;->d(Landroid/view/View;)I

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;I)V
    .locals 1

    check-cast p1, Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/systemui/animation/A;->a:Lcom/android/systemui/animation/z;

    iget-object p0, p0, Lcom/android/systemui/animation/x;->a:Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;

    invoke-static {p1, p0, p2}, Lcom/android/systemui/animation/z;->d(Landroid/view/View;Lcom/android/systemui/animation/ViewHierarchyAnimator$Bound;I)V

    return-void
.end method
