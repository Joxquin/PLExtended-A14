.class public final synthetic LA0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/permission/SafeCloseable;


# instance fields
.field public final synthetic d:LA0/x;

.field public final synthetic e:LA0/w;


# direct methods
.method public synthetic constructor <init>(LA0/x;LA0/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LA0/l;->d:LA0/x;

    iput-object p2, p0, LA0/l;->e:LA0/w;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, LA0/l;->d:LA0/x;

    iget-object p0, p0, LA0/l;->e:LA0/w;

    iget-object v0, v0, LA0/x;->b:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, LA0/w;->k:Z

    iget-object v0, p0, LA0/w;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    return-void
.end method
