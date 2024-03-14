.class public final Lcom/android/systemui/animation/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field public final a:Lcom/android/systemui/animation/o;

.field public final b:Lcom/android/systemui/animation/m;

.field public final c:[I

.field public final d:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/systemui/animation/s;->e:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/animation/o;Lcom/android/systemui/animation/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/s;->a:Lcom/android/systemui/animation/o;

    iput-object p2, p0, Lcom/android/systemui/animation/s;->b:Lcom/android/systemui/animation/m;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/animation/s;->c:[I

    const/16 p1, 0x8

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/systemui/animation/s;->d:[F

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/android/systemui/animation/n;)Z
    .locals 5

    const-string v0, "launchContainer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/animation/s;->c:[I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, p2, Lcom/android/systemui/animation/n;->a:I

    const/4 v1, 0x1

    aget v2, p0, v1

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    iget v0, p2, Lcom/android/systemui/animation/n;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v2

    if-lt v0, v4, :cond_0

    iget v0, p2, Lcom/android/systemui/animation/n;->c:I

    aget p0, p0, v3

    if-gt v0, p0, :cond_0

    iget p2, p2, Lcom/android/systemui/animation/n;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, p0

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method
