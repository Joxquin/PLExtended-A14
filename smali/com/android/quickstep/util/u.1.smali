.class public final synthetic Lcom/android/quickstep/util/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:[Landroid/content/Intent;

.field public final synthetic g:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;I)V
    .locals 0

    iput p4, p0, Lcom/android/quickstep/util/u;->d:I

    iput-object p1, p0, Lcom/android/quickstep/util/u;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/quickstep/util/u;->f:[Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/quickstep/util/u;->g:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/quickstep/util/u;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/util/u;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/util/u;->f:[Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/quickstep/util/u;->g:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/util/ImageActionUtils;->f(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/util/u;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/quickstep/util/u;->f:[Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/quickstep/util/u;->g:Landroid/view/View;

    invoke-static {v0, v1, p0}, Lcom/android/quickstep/util/ImageActionUtils;->d(Landroid/content/Context;[Landroid/content/Intent;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
