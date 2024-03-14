.class final Lcom/android/launcher3/views/StickyHeaderLayout$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "scrollAnimOffset"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-static {p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->c(Lcom/android/launcher3/views/StickyHeaderLayout;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/views/StickyHeaderLayout;

    invoke-static {p1, p2}, Lcom/android/launcher3/views/StickyHeaderLayout;->d(Lcom/android/launcher3/views/StickyHeaderLayout;F)V

    invoke-static {p1}, Lcom/android/launcher3/views/StickyHeaderLayout;->e(Lcom/android/launcher3/views/StickyHeaderLayout;)V

    return-void
.end method
