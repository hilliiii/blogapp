class ProfilesController < ApplicationController
    before_action :authenticate_user!

    def show
        @profile = current_user.profile
    end

    def edit
        # if current_user.profile.present?
        #     @profile = current_user.profile
        # else
        #     @profile = current_user.build_profile
        # end

        # 上の処理と下の処理が同じ意味！！
        @profile = current_user.prepare_profile

    end

    def update
        @profile = current_user.prepare_profile
        @profile.assign_attributes(profile_params)
        if @profile.save
            redirect_to profile_path, notice: 'プロフィールを保存しました'
        else
            flash.now[:error] = 'プロフィールを更新できませんでした'
            render :edit, status: :unprocessable_entity
        end
    end

    private
    def profile_params
        params.require(:profile).permit(
            :nickname,
            :introduction,
            :gender,
            :birthday,
            :subscribed,
            :avatar
        )
    end
end
