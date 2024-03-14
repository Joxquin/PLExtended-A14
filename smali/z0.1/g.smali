.class public final Lz0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/app/search/SearchTarget;

.field public static final b:Landroid/app/search/SearchTarget;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    new-instance v1, Landroid/app/search/SearchTarget$Builder;

    const/high16 v2, 0x40000

    const-string v3, "empty_divider"

    const-string v4, "divider"

    invoke-direct {v1, v2, v3, v4}, Landroid/app/search/SearchTarget$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/app/search/SearchTarget$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/search/SearchTarget$Builder;->setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v4}, Landroid/app/search/SearchTarget$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/search/SearchTarget$Builder;->build()Landroid/app/search/SearchTarget;

    move-result-object v1

    sput-object v1, Lz0/g;->a:Landroid/app/search/SearchTarget;

    new-instance v1, Landroid/app/search/SearchTarget$Builder;

    const-string v4, "section_header"

    invoke-direct {v1, v2, v4, v4}, Landroid/app/search/SearchTarget$Builder;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/app/search/SearchTarget$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/search/SearchTarget$Builder;->setUserHandle(Landroid/os/UserHandle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/search/SearchTarget$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/search/SearchTarget$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/search/SearchTarget$Builder;->build()Landroid/app/search/SearchTarget;

    move-result-object v0

    sput-object v0, Lz0/g;->b:Landroid/app/search/SearchTarget;

    return-void
.end method
