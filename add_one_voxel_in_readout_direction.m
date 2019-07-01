function [ data_for_acqp ] = add_one_voxel_in_readout_direction( data_for_acqp )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


    data_for_acqp_new=zeros(size(data_for_acqp,1)+1, size(data_for_acqp,2), size(data_for_acqp,3));
    data_for_acqp_new(1:end-1,:,:)=data_for_acqp;
    clear data_for_acqp
    data_for_acqp=data_for_acqp_new;
    clear data_for_acqp_new

end

