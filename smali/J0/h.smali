.class public final synthetic LJ0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/dragndrop/DragView;

.field public final synthetic f:Landroid/graphics/Path;

.field public final synthetic g:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;I)V
    .locals 0

    iput p4, p0, LJ0/h;->d:I

    iput-object p1, p0, LJ0/h;->e:Lcom/android/launcher3/dragndrop/DragView;

    iput-object p2, p0, LJ0/h;->f:Landroid/graphics/Path;

    iput-object p3, p0, LJ0/h;->g:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, LJ0/h;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, LJ0/h;->e:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v1, p0, LJ0/h;->f:Landroid/graphics/Path;

    iget-object p0, p0, LJ0/h;->g:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/dragndrop/DragView;->b(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :goto_0
    iget-object v0, p0, LJ0/h;->e:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v1, p0, LJ0/h;->f:Landroid/graphics/Path;

    iget-object p0, p0, LJ0/h;->g:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/dragndrop/DragView;->c(Lcom/android/launcher3/dragndrop/DragView;Landroid/graphics/Path;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
