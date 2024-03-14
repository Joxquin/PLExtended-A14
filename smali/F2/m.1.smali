.class public final synthetic LF2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:LF2/q;


# direct methods
.method public synthetic constructor <init>(LF2/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF2/m;->d:LF2/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, LF2/m;->d:LF2/q;

    iget-object v0, p0, LF2/q;->e:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, LF2/q;->t(Z)V

    iput-boolean v0, p0, LF2/q;->j:Z

    return-void
.end method
