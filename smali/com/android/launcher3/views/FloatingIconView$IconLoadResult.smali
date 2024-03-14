.class final Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field badge:Landroid/graphics/drawable/Drawable;

.field btvDrawable:Lcom/android/launcher3/views/p;

.field drawable:Landroid/graphics/drawable/Drawable;

.field iconOffset:I

.field isIconLoaded:Z

.field final isThemed:Z

.field final itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field onIconLoaded:Lcom/android/launcher3/views/r;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->itemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-boolean p2, p0, Lcom/android/launcher3/views/FloatingIconView$IconLoadResult;->isThemed:Z

    return-void
.end method
