.class final Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# instance fields
.field private final mBadge:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final mBg:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final mFg:Landroid/graphics/drawable/Drawable$ConstantState;

.field private final mMask:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/drawable/Drawable$ConstantState;Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBg:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mFg:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBadge:Landroid/graphics/drawable/Drawable$ConstantState;

    iput-object p4, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mMask:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBg:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mFg:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result v1

    and-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBadge:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->getChangingConfigurations()I

    move-result p0

    and-int/2addr p0, v0

    return p0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    new-instance v6, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBg:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mFg:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mBadge:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon$MyConstantState;->mMask:Landroid/graphics/Path;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/dragndrop/FolderAdaptiveIcon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Path;I)V

    return-object v6
.end method
