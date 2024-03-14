.class public final synthetic LL1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/contentsuggestions/ContentSuggestionsManager$ClassificationsCallback;


# instance fields
.field public final synthetic a:LL1/h;


# direct methods
.method public synthetic constructor <init>(LL1/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL1/g;->a:LL1/h;

    return-void
.end method


# virtual methods
.method public final onContentClassificationsAvailable(ILjava/util/List;)V
    .locals 0

    iget-object p0, p0, LL1/g;->a:LL1/h;

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/contentsuggestions/ContentClassification;

    invoke-virtual {p1}, Landroid/app/contentsuggestions/ContentClassification;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, LL1/h;->a(Landroid/os/Bundle;)V

    return-void
.end method
