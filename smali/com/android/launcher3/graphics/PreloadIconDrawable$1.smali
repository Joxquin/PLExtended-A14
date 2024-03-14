.class final Lcom/android/launcher3/graphics/PreloadIconDrawable$1;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "internalStateProgress"

    invoke-direct {p0, p1, v0}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-static {p1}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->c(Lcom/android/launcher3/graphics/PreloadIconDrawable;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p1, p0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->e(Lcom/android/launcher3/graphics/PreloadIconDrawable;F)V

    return-void
.end method
