.class final Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable$MyConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field private final mRenderer:Lcom/android/launcher3/icons/BitmapRenderer;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/BitmapRenderer;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable$MyConstantState;->mRenderer:Lcom/android/launcher3/icons/BitmapRenderer;

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable$MyConstantState;->mRenderer:Lcom/android/launcher3/icons/BitmapRenderer;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$BitmapRendererDrawable;-><init>(Lcom/android/launcher3/icons/BitmapRenderer;)V

    return-object v0
.end method
