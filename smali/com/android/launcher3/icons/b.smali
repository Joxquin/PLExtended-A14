.class public final synthetic Lcom/android/launcher3/icons/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic a:Landroid/content/res/Resources;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(ILandroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/icons/b;->a:Landroid/content/res/Resources;

    iput p1, p0, Lcom/android/launcher3/icons/b;->b:I

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/icons/b;->a:Landroid/content/res/Resources;

    iget p0, p0, Lcom/android/launcher3/icons/b;->b:I

    invoke-virtual {v0, p1, p0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
