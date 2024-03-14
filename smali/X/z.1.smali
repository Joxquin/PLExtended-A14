.class public final LX/z;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, LX/z;->a:Landroidx/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LX/z;->a:Landroidx/preference/PreferenceFragment;

    iget-object p1, p0, Landroidx/preference/PreferenceFragment;->e:LX/X;

    iget-object p1, p1, LX/X;->g:Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/preference/PreferenceFragment;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, LX/S;

    invoke-direct {v0, p1}, LX/S;-><init>(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/Z;)V

    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->onAttached()V

    :cond_1
    :goto_0
    return-void
.end method
