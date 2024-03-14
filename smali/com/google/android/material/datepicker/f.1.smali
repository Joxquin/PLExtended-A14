.class public final Lcom/google/android/material/datepicker/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/datepicker/e;

.field public final b:Lcom/google/android/material/datepicker/e;

.field public final c:Lcom/google/android/material/datepicker/e;

.field public final d:Lcom/google/android/material/datepicker/e;

.field public final e:Lcom/google/android/material/datepicker/e;

.field public final f:Lcom/google/android/material/datepicker/e;

.field public final g:Lcom/google/android/material/datepicker/e;

.field public final h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f040390

    invoke-static {v1, p1, v0}, LA2/c;->b(ILandroid/content/Context;Ljava/lang/String;)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->data:I

    sget-object v1, Li2/a;->o:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/android/material/datepicker/e;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/f;->a:Lcom/google/android/material/datepicker/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/android/material/datepicker/e;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/f;->g:Lcom/google/android/material/datepicker/e;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/android/material/datepicker/e;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/f;->b:Lcom/google/android/material/datepicker/e;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {v1, p1}, Lcom/google/android/material/datepicker/e;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/e;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/datepicker/f;->c:Lcom/google/android/material/datepicker/e;

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, LA2/d;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v3, p1}, Lcom/google/android/material/datepicker/e;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/e;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/f;->d:Lcom/google/android/material/datepicker/e;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {v3, p1}, Lcom/google/android/material/datepicker/e;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/e;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/f;->e:Lcom/google/android/material/datepicker/e;

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v2, p1}, Lcom/google/android/material/datepicker/e;->a(ILandroid/content/Context;)Lcom/google/android/material/datepicker/e;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/f;->f:Lcom/google/android/material/datepicker/e;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/datepicker/f;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
