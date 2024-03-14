.class public final synthetic Lcom/android/launcher3/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/PagedView;

.field public final synthetic f:I

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/PagedView;III)V
    .locals 0

    iput p4, p0, Lcom/android/launcher3/y0;->d:I

    iput-object p1, p0, Lcom/android/launcher3/y0;->e:Lcom/android/launcher3/PagedView;

    iput p2, p0, Lcom/android/launcher3/y0;->f:I

    iput p3, p0, Lcom/android/launcher3/y0;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/y0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/y0;->e:Lcom/android/launcher3/PagedView;

    iget v1, p0, Lcom/android/launcher3/y0;->f:I

    iget p0, p0, Lcom/android/launcher3/y0;->g:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/PagedView;->a(Lcom/android/launcher3/PagedView;II)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/y0;->e:Lcom/android/launcher3/PagedView;

    iget v1, p0, Lcom/android/launcher3/y0;->f:I

    iget p0, p0, Lcom/android/launcher3/y0;->g:I

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/PagedView;->f(Lcom/android/launcher3/PagedView;II)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
