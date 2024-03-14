.class public final Lcom/android/launcher3/graphics/Scrim;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SCRIM_PROGRESS:Landroid/util/FloatProperty;


# instance fields
.field protected final mRoot:Landroid/view/View;

.field protected mScrimAlpha:I

.field protected mScrimColor:I

.field protected mScrimProgress:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/graphics/Scrim$1;

    invoke-direct {v0}, Lcom/android/launcher3/graphics/Scrim$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimAlpha:I

    iput-object p1, p0, Lcom/android/launcher3/graphics/Scrim;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f06034e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimColor:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimColor:I

    iget p0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimAlpha:I

    invoke-static {v0, p0}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method
