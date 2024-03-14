.class public final synthetic Lcom/android/quickstep/util/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/util/function/Supplier;

.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Landroid/os/Parcelable;

.field public final synthetic i:Landroid/os/Parcelable;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;Landroid/graphics/RectF;Landroid/content/Context;Ljava/lang/String;Landroid/app/prediction/AppTarget;Landroid/content/pm/ShortcutInfo;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/util/s;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/s;->e:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/quickstep/util/s;->h:Landroid/os/Parcelable;

    iput-object p3, p0, Lcom/android/quickstep/util/s;->f:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/quickstep/util/s;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/quickstep/util/s;->i:Landroid/os/Parcelable;

    iput-object p6, p0, Lcom/android/quickstep/util/s;->j:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Supplier;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/s;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/s;->e:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/quickstep/util/s;->g:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/quickstep/util/s;->f:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/quickstep/util/s;->h:Landroid/os/Parcelable;

    iput-object p5, p0, Lcom/android/quickstep/util/s;->i:Landroid/os/Parcelable;

    iput-object p6, p0, Lcom/android/quickstep/util/s;->j:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget v0, p0, Lcom/android/quickstep/util/s;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/quickstep/util/s;->e:Ljava/util/function/Supplier;

    iget-object v2, p0, Lcom/android/quickstep/util/s;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/quickstep/util/s;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/quickstep/util/s;->h:Landroid/os/Parcelable;

    move-object v4, v0

    check-cast v4, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/quickstep/util/s;->i:Landroid/os/Parcelable;

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/quickstep/util/s;->j:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroid/view/View;

    invoke-static/range {v1 .. v6}, Lcom/android/quickstep/util/ImageActionUtils;->e(Ljava/util/function/Supplier;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Rect;Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :goto_0
    iget-object v7, p0, Lcom/android/quickstep/util/s;->e:Ljava/util/function/Supplier;

    iget-object v0, p0, Lcom/android/quickstep/util/s;->h:Landroid/os/Parcelable;

    move-object v8, v0

    check-cast v8, Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/quickstep/util/s;->f:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/quickstep/util/s;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/quickstep/util/s;->i:Landroid/os/Parcelable;

    move-object v11, v0

    check-cast v11, Landroid/app/prediction/AppTarget;

    iget-object p0, p0, Lcom/android/quickstep/util/s;->j:Ljava/lang/Object;

    move-object v12, p0

    check-cast v12, Landroid/content/pm/ShortcutInfo;

    invoke-static/range {v7 .. v12}, Lcom/android/quickstep/util/ImageActionUtils;->a(Ljava/util/function/Supplier;Landroid/graphics/RectF;Landroid/content/Context;Ljava/lang/String;Landroid/app/prediction/AppTarget;Landroid/content/pm/ShortcutInfo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
