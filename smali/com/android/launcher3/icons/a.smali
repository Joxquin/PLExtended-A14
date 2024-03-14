.class public final synthetic Lcom/android/launcher3/icons/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/icons/BitmapRenderer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/icons/BaseIconFactory;

.field public final synthetic b:Landroid/graphics/drawable/Drawable;

.field public final synthetic c:F

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/icons/BaseIconFactory;Landroid/graphics/drawable/Drawable;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/a;->a:Lcom/android/launcher3/icons/BaseIconFactory;

    iput-object p2, p0, Lcom/android/launcher3/icons/a;->b:Landroid/graphics/drawable/Drawable;

    iput p3, p0, Lcom/android/launcher3/icons/a;->c:F

    iput p4, p0, Lcom/android/launcher3/icons/a;->d:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/icons/a;->c:F

    iget v1, p0, Lcom/android/launcher3/icons/a;->d:I

    iget-object v2, p0, Lcom/android/launcher3/icons/a;->a:Lcom/android/launcher3/icons/BaseIconFactory;

    iget-object p0, p0, Lcom/android/launcher3/icons/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, p0, v0, v1, p1}, Lcom/android/launcher3/icons/BaseIconFactory;->a(Lcom/android/launcher3/icons/BaseIconFactory;Landroid/graphics/drawable/Drawable;FILandroid/graphics/Canvas;)V

    return-void
.end method
