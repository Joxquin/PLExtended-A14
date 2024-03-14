.class public final synthetic LL1/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LL1/u0;

.field public final synthetic e:I

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(LL1/u0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/p0;->d:LL1/u0;

    iput p2, p0, LL1/p0;->e:I

    iput p3, p0, LL1/p0;->f:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LL1/p0;->d:LL1/u0;

    iget v1, p0, LL1/p0;->e:I

    iget p0, p0, LL1/p0;->f:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {v2, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, v0, LL1/u0;->a:Landroid/widget/TextView;

    const/high16 v0, 0x20000

    invoke-virtual {p0, v0, v2}, Landroid/widget/TextView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return-void
.end method
